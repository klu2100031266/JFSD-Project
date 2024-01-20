<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .searchpagecss {
            background-image: url("libadd.jpg");
            height:100vh;
            width:100vw;
            background-size: cover;
        }
        .seacss
        {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 250px;
        }

        button {
  font-family: monospace;
  font-size: 1.5rem;
  color: #FAFAFA;
  text-transform: uppercase;
  padding: 10px 20px;
  border-radius: 10px;
  border: 2px solid #FAFAFA;
  background: #252525;
  box-shadow: 3px 3px #fafafa;
  cursor: pointer;
  margin: 10px 0;
}

button:active {
  box-shadow: none;
  transform: translate(3px, 3px);
}

.input-container {
  display: flex;
  background: white;
  border-radius: 1rem;
  background: linear-gradient(135deg, #23272F 0%, #14161a 100%);
  box-shadow: 10px 10px 20px #0e1013, -10px -10px 40px #383e4b;
  padding: 0.3rem;
  gap: 0.3rem;
}

.input-container input {
  border-radius: 0.8rem 0 0 0.8rem;
  background: #23272F;
  box-shadow: inset 5px 5px 10px #0e1013, inset -5px -5px 10px #383e4b, 0px 0px 100px rgba(255, 212, 59, 0), 0px 0px 100px rgba(255, 102, 0, 0);
  width: 100%;
  flex-basis: 75%;
  padding: 1rem;
  border: none;
  border: 1px solid transparent;
  color: white;
  transition: all 0.2s ease-in-out;
}

.input-container input:focus {
  border: 1px solid #FFD43B;
  outline: none;
  box-shadow: inset 0px 0px 10px rgba(255, 102, 0, 0.5), inset 0px 0px 10px rgba(255, 212, 59, 0.5), 0px 0px 100px rgba(255, 212, 59, 0.5), 0px 0px 100px rgba(255, 102, 0, 0.5);
}

.input-container button {
  flex-basis: 25%;
  padding: 1rem;
  background: linear-gradient(135deg, rgb(255, 212, 59) 0%, rgb(255, 102, 0) 100%);
  box-shadow: 0px 0px 1px rgba(255, 212, 59, 0.5), 0px 0px 1px rgba(255, 102, 0, 0.5);
  font-weight: 900;
  letter-spacing: 0.3rem;
  text-transform: uppercase;
  color: #23272F;
  border: none;
  width: 100%;
  border-radius: 0 1rem 1rem 0;
  transition: all 0.2s ease-in-out;
}

.input-container button:hover {
  background: linear-gradient(135deg, rgb(255, 212, 59) 50%, rgb(255, 102, 0) 100%);
  box-shadow: 0px 0px 100px rgba(255, 212, 59, 0.5), 0px 0px 100px rgba(255, 102, 0, 0.5);
}

@media (max-width: 500px) {
  .input-container {
    flex-direction: column;
  }

  .input-container input {
    border-radius: 0.8rem;
  }

  .input-container button {
    padding: 1rem;
    border-radius: 0.8rem;
  }
}

    </style>
</head>
<body>
    <div class="searchpagecss">
        <div class="seacss">
        <form action="/search" th:action="@{/search}" method="get">
 


            <div class="input-container">
                 <input type="search" name="title">
                <button type="submit" class="button">search</button>
              </div>
              
    
        </form><br><br>
        <a href="allbooks" align="center"><button>Available Books</button></a>&nbsp&nbsp&nbsp
    </div>
    </div>
</body>
</html>