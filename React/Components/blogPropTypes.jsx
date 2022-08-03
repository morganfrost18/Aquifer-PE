import PropTypes from 'prop-types';

const blogPropTypes = {
    blogFormData: PropTypes.shape({
        title: PropTypes.string.isRequired,
        subject: PropTypes.string.isRequired,
        blogTypeId: PropTypes.string.isRequired,
        imageUrl: PropTypes.string.isRequired,
        content: PropTypes.string.isRequired,
        datePublish: PropTypes.string,
        isPublished: PropTypes.bool,
    }),

    data: PropTypes.shape({
        title: PropTypes.string.isRequired,
        subject: PropTypes.string.isRequired,
        blogTypeId: PropTypes.string.isRequired,
        imageUrl: PropTypes.string.isRequired,
        content: PropTypes.string.isRequired,
        datePublish: PropTypes.string,
        isPublished: PropTypes.bool,
    }),

    // blogPageData: PropTypes.shape({
    //         id: PropTypes.number,
    //         roles: PropTypes.arrayOf(PropTypes.string),
    //         email: PropTypes.string,
    //         isLoggedIn: PropTypes.bool,
    //     }),
};

export default blogPropTypes;
