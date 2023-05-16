import React, { useEffect, useState } from 'react';

const UsersIndex = () => {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetch('/users.json')
      .then((response) => response.json())
      .then((data) => setUsers(data));
  }, []);

  return (
    <div>
      <h1>Usuários</h1>
      <ul>
        {users.map((user) => (
          <li key={user.id}>
            {user.first_name} - {user.email}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default UsersIndex;
