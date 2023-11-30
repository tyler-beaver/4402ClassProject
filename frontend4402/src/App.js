import React, { useState, useEffect } from 'react';
import axios from 'axios'; //library to make http requests
import McQueen from './theImages/Mcqueen.jpg'; 
import Mater from './theImages/Mater.jpg'; 

function App() {
  const [message, setMessage] = useState('');
  const [sql, setSql] = useState('');
  const [result, setResult] = useState([]); // State to store the API response

  useEffect(() => {
    // API call to http://localhost:8080/api/hello
    axios.get('http://localhost:8080/api/hello')
        .then(response => setMessage(response.data))
        .catch(error => setMessage('Error connecting to backend and database.\nPlease make sure backend is up and running at ' + 
                                    'http://localhost:8080.\nIf it is not, open the backend4402 folder in IntelliJ (or another IDE) and ' + 
                                    'run the main class in Example4402Application.'));
}, []);

// API call to http://localhost:8080/api/sql 
  const handleExecuteSQL = () => {
    axios.post('http://localhost:8080/api/sql', { sql: sql }) // sql is the argument accepted by the backend
      .then((response) => {
        setResult(response.data);
      })
      .catch((error) => {
        console.error('Error executing SQL statement:', error);
        setResult([]);
      });
  };

  const handleSQLChange = (e) => {
    setSql(e.target.value);
  };

  return (
    <div style={containerStyle}>
      <h1>CSC 4402 Project</h1>
      <h2>Car Rental Agency Database</h2>
      <div style={{ display: 'flex', justifyContent: 'space-between' }}>
        <img src={McQueen} alt="McQueen" />
        <img src={Mater} alt="Mater" />
      </div>
      <div style={example}>{message}</div>
      <div><p></p></div>

      <label>
      SQL Statement:</label>
      <textarea
        style={textAreaStyle}
        value={sql}
        onChange={handleSQLChange}
      />

      <button onClick={handleExecuteSQL} style={buttonStyle}>
        Execute SQL
      </button>

      <div>
      <h4>SQL Result:</h4>
      {result.map((item, index) => (
        <div key={index}>
          <pre
            style={{
              whiteSpace: "pre-line",
              fontSize: "12px",
              padding: "8px",
              border: "1px solid #ccc",
              width:'100%',
              borderRadius: "5px",
            }}
          >
          {JSON.stringify(item, null, 2)}
          </pre>
        </div>
      ))}

    </div>
      <div style={example}>
      Test Queries:
      <ol style={testQueriesStyle}>
        <li style={listItemStyle}>SELECT * FROM customer</li>
        <li style={listItemStyle}>INSERT INTO customer (customer_id, first_name, last_name, phone_num, customer_license_num)
      VALUES ('C21', 'Dummy', 'Code', 5041111111, 2111111111); </li>
        <li style={listItemStyle}>Test</li>
        <li style={listItemStyle}>Test</li>
        <li style={listItemStyle}>Test</li>
      </ol>
      </div>

    </div>
  );
}


// Some basic styles for the page
const containerStyle = {
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  fontFamily: 'monospace',
  fontSize: '1.2rem',
  textAlign: 'center',
  marginTop: '50px',
};
const testQueriesStyle = {
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'left',
  fontFamily: 'monospace',
  fontSize: '1rem',
  textAlign: 'left',
  marginTop: '10px',
  marginBottom: '10px',
};

const listItemStyle = {
  marginBottom: '10px',
};

const textAreaStyle = {
  width: '30%',       // Set a fixed width
  minHeight: '10%',   // Set a minimum height
  padding: '10px',
  margin:'20px',
  resize: 'none',      // Disable resizing
  overflowY: 'auto',   // Enable vertical scrolling if needed
};

const example = {
  width: '53%',       // Set a fixed width
  minHeight: '10%',   // Set a minimum height
  maxWidth: '80%',
  padding: '5px',
  resize: 'none',      // Disable resizing
  fontSize: '1rem',
};

const buttonStyle = {
  backgroundColor: '#007bff',
  color: 'white',
  padding: '10px 20px',
  border: 'none',
  borderRadius: '4px',
  cursor: 'pointer',
};

export default App;
