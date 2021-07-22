import React from 'react'
import {useQuery} from '@apollo/react-hooks'

import withTitle from '../components/common/with-title'
import PostGrid from '../components/common/post-grid'
import {GET_POSTS_BY_CATEGORIES_QUERY} from '../queries/posts'

const catIds = [1,2,3,4,5]

export default function Projects ({history}) {
    const {data, error} = useQuery(GET_POSTS_BY_CATEGORIES_QUERY, {
        variables: {
            cat_ids: catIds
        }
    })

    if (error) {
        return 'Something went wrong.'
    }
    
    return withTitle(
        'Projects',
        data?.posts 
            ? <PostGrid posts = {data.posts}/>
            : 'Loading'
    )
}