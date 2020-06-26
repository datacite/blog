'use strict';

/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */

import * as React from 'react'
import ReactDOM from 'react-dom'
import ReactHtmlParser from 'react-html-parser'
import truncate from 'lodash/truncate'

const e = React.createElement;

function Search() {
  const [error, setError] = React.useState(null);
  const [isLoaded, setIsLoaded] = React.useState(false);
  const [items, setItems] = React.useState([]);
  const [tags, setTags] = React.useState([]);

  function ApiError(props) {
    this.status = props.status;
    this.message = props.statusText
    if (!this.message) {
      if (this.status == 404) this.message = "Not found";
    }
  }

  const SearchItem = ({item}) => {
    const creators = () => {
      if (!item.attributes.creators) return 'No creators'
  
      const creatorList = item.attributes.creators.reduce( (sum, creator, index, array) => {
        const c = creator.familyName ? [creator.givenName, creator.familyName].join(' ') : creator.name
        
        // padding depending on position in creators list
        if (array.length > index + 2) {
          return sum + c + ', '
        } else if (array.length > index + 1) {
          return sum + c + ' and '
        } else {
          return sum + c
        }
      }, '')
  
      return (
        creatorList
      )
    }

    const description = () => {
      if (!item.attributes.descriptions[0]) return '';
  
      const descriptionHtml = truncate(item.attributes.descriptions[0].description, { 'length': 750, 'separator': '… '});
  
      return (
        <p>
          {ReactHtmlParser(descriptionHtml)}
        </p>
      )
    }

    return (
      <div key={item.id} className="panel panel-default post-list">
        <div className="panel-body post-content">
          <header className="post-header"><h3 className="work"><a href={new URL(item.attributes.url).pathname}>{item.attributes.titles[0].title}</a></h3></header>
          <section className="post-excerpt" itemProp="description">
            {description()}
          </section>
        </div>
        <div className="panel-footer" id={item.id}>
          <span className="meta"><time>{new Date(item.attributes.dates[0].date).toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric' })}</time></span>
          <span className="meta">{creators()}</span>
          <a href={item.attributes.url + "#disqus_thread"} data-disqus-identifier={item.attributes.url} className="pull-right">0 comments</a>
        </div>
      </div>
    );
  }

  function facetLink(id) {
    let url = '/index.html?';
    let params = new URLSearchParams(window.location.search);
    
    params.set('tag', id);
    url += params.toString();
    return url;
  }

  const FacetItem = ({tag}) => {
    return (
      <li>
        <a href={facetLink(tag.id)}><i className="fa fa-square-o"></i></a>
        <span>{tag.title}</span>
        <span className="number pull-right">{tag.count}</span>
      </li>
    )
  }

  React.useEffect(() => {
    let url = "https://api.datacite.org/dois?client-id=datacite.blog&sort=-created&state=findable"
    const params = new URLSearchParams(window.location.search)
    if (params.has('query')) url += '&query=' + params.get('query');
    if (params.has('tag')) url += '&subject=' + params.get('tag');

    fetch(url)
      .then((response) => {
        if (!response.ok) throw new ApiError(response);
        else return response.json();
      })
      .then(
        (result) => {
          setIsLoaded(true);
          setItems(result.data);
          setTags(result.meta.subjects);
        },
        (error) => {
          setIsLoaded(true);
          setError(error);
        }
      )
  }, [])

  if (error) {
    return e(
      'div', null, 'Error: ' + error.message
    )
  }

  // loading should be fast enough, so no need to render before isLoaded

  return (
    <div className="row">
      <div className='col-md-9'>
        <div className="post-list"></div>
          {items.map(item => (
            <React.Fragment key={item.id}>
              <SearchItem item={item} />
            </React.Fragment>
          ))}
      </div>
      <div className='col-md-3'>
        {tags &&
          <div id="tags" className="panel facets">
            <div className="panel-body">
              <h4>Tags</h4>
              <ul>
              {tags.map(tag => (
                <FacetItem key={tag.id} tag={tag} />
              ))}
              </ul>
            </div>
          </div>
        }
      </div>
    </div>
  )
}

const domContainer = document.querySelector('#search-content');
ReactDOM.render(e(Search), domContainer);
