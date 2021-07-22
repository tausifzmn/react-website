import React from 'react'
import {MasonryPost, PostMasonry, PostGrid} from '../components/common'
import upcoming from '../assets/mocks/upcoming'
import past from '../assets/mocks/past'

const upcomingConfig = {
    1: {
        gridArea: '1 / 2 / 3 / 3'

    }
}

const pastConfig = {
    0: {
        gridArea: '1 / 1 / 2 / 3',
        height: '300px'
    },

    1: {
        height: '300px'
    },

    3: {
        height: '630px',
        marginLeft: '30px',
        width: '630px'
    }

}

const mergeStyles = function (posts, config) {
    posts.forEach((post, index) => {
        post.style = config[index]
        post.author = 'Tausif Zaman'
        post.description = ' Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
    })
}

const recentEvents = [...upcoming,...past, ...past]

mergeStyles(upcoming, upcomingConfig) 
mergeStyles(past, pastConfig)

const oldestPost = past.pop()

export default function Home () {
    return (
        <main className = "home">
            <section className ="container">
                <div className = "row">
                    
                    <section className="past-posts-container">
                        <PostMasonry posts = {past} columns = {2} tagsOnTop={true}/>
                        <MasonryPost post = {oldestPost} tagsOnTop = {true}/>
                    </section>
                </div>
            </section>
            <section className = "bg-white">
                <section className ="container">
                    <div className = "row">                    
                        <h1> Recent Events </h1>
                        <PostGrid posts = {recentEvents} />    
                    </div>
                </section>
            </section>

            <section className ="container">
                <div className = "row">                    
                    <PostMasonry posts = {upcoming} columns = {3}/>
                    
                </div>
            </section>
        </main>
    ) 
}