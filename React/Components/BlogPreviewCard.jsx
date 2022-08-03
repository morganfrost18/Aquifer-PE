import React from 'react';
import debug from 'sabio-debug';
import blogPropTypes from './blogPropTypes';
import image2 from '../../assets/images/cnmPro/image2.jpg';
import Moment from 'moment';

const _logger = debug.extend('BlogCard');

const BlogPreviewCard = (props) => {
    _logger('Log');
    const blogDate = Moment(props.data.datePublish).format('MMM YYYY');

    return (
        <div className="col-md-10">
            <div className="card" style={{ border: '1px solid black' }}>
                <img
                    src={props.data.imageUrl}
                    className="card-img-top"
                    alt={image2}
                    height="250 px"
                    width="350px"></img>
                <div className="card-body">
                    <h3 className="card-title blog-card-title-cnmpro">{props.data.title}</h3>
                    <p>Author Name | {blogDate}</p>
                    <div className="row">
                        <div className="col">
                            <button type="button" className="btn btn-primary" width="200 px">
                                Details
                            </button>
                        </div>
                        <div className="col">
                            <button type="button" className="btn btn-danger" width="200 px">
                                Edit
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

BlogPreviewCard.propTypes = blogPropTypes;

export default BlogPreviewCard;
