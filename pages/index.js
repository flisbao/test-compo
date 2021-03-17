import Head from 'next/head'
import styles from '../styles/Home.module.css'
import React, {useState, useEffect} from 'react'


export default function Home() {
  const [name, setName] = useState('')

  useEffect(async () => {
    const result = await fetch('https://605219e1fb49dc00175b7892.mockapi.io/users')
    const data = await result.json()
    setName(data[0].name)
  })

  return (
    <div className={styles.container}>
      <Head>
        <title>Test</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={styles.main}>
        <h1 className={styles.title}>
          Welcome to our page { name }
        </h1>
      </main>

    </div>
  )
}
