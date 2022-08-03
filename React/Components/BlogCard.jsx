import React from 'react';
import debug from 'sabio-debug';
import image2 from '../../assets/images/cnmPro/image2.jpg';
import blogPropTypes from './blogPropTypes';
import Moment from 'moment';

const _logger = debug.extend('BlogCard');

function BlogCard(props) {
    _logger(props.blog);
    const aBlog = props.blog;
    const blogDate = Moment(aBlog.datePublish).format('MMM YYYY');

    return (
        <React.Fragment>
            <div className="col-md-3">
                <div className="card blog-card-cnmpro" style={{ border: '1px solid black' }}>
                    <img src={image2} className="card-img-top" alt={image2} height="250 px" width="350px" />
                    <div className="card-body">
                        <h3 className="card-title blog-card-title-cnmpro">{aBlog.title}</h3>
                        <p>Author Name | {blogDate}</p>
                        <p></p>
                        <div className="row">
                            <div className="col">
                                <button href="#" className="btn btn-primary" width="200 px">
                                    Details
                                </button>
                            </div>
                            <div className="col">
                                <button type="button" data-page="BlogDetails" className="btn btn-danger" width="200 px">
                                    Edit
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </React.Fragment>
    );
}

BlogCard.propTypes = blogPropTypes;

export default BlogCard;
