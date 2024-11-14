---
lab:
    title: 'Generate and improve code with Azure OpenAI Service'
---

# Generate and improve code with Azure OpenAI Service

The Azure OpenAI Service models can generate code for you using natural language prompts, fixing bugs in completed code, and providing code comments. These models can also explain and simplify existing code to help you understand what it does and how to improve it.

In scenario for this exercise, you will perform the role of a software developer exploring how to use generative AI to make coding tasks easier and more efficient. The techniques used in the exercise can be applied to other code files, programming languages, and use cases.

This exercise will take approximately **25** minutes.



## Generate code in chat playground

Before using in your app, examine how Azure OpenAI can generate and explain code in the chat playground.

1. In the **Azure OpenAI Studio** at `https://oai.azure.com`, in the **Playground** section, select the **Chat** page. The **Chat** playground page consists of three main sections:
    - **Setup** - used to set the context for the model's responses.
    - **Chat session** - used to submit chat messages and view responses.
    - **Configuration** - used to configure settings for the model deployment.
2. In the **Configuration** section, ensure that your model deployment is selected.
3. In the **Setup** area, set the system message to `You are a programming assistant helping write code` and apply the changes.
4. In the **Chat session**, submit the following query:

    ```
    Write a function in python that takes a character and a string as input, and returns how many times the character appears in the string
    ```

    The model will likely respond with a function, with some explanation of what the function does and how to call it.

5. Next, send the prompt `Do the same thing, but this time write it in C#`.

    The model likely responded very similarly as the first time, but this time coding in C#. You can ask it again for a different language of your choice, or a function to complete a different task such as reversing the input string.

6. Next, let's explore using AI to understand code. Submit the following prompt as the user message.

    ```
    What does the following function do?  
    ---  
    def multiply(a, b):  
        result = 0  
        negative = False  
        if a < 0 and b > 0:  
            a = -a  
            negative = True  
        elif a > 0 and b < 0:  
            b = -b  
            negative = True  
        elif a < 0 and b < 0:  
            a = -a  
            b = -b  
        while b > 0:  
            result += a  
            b -= 1      
        if negative:  
            return -result  
        else:  
            return result  
    ```

    The model should describe what the function does, which is to multiply two numbers together by using a loop.

7. Submit the prompt `Can you simplify the function?`.

    The model should write a simpler version of the function.

8. Submit the prompt: `Add some comments to the function.`

    The model adds comments to the code.

## Execute the code_generation.ipynb in Google colab


1. Choose option **1** to add comments to your code and enter the following prompt. Note, the response might take a few seconds for each of these tasks.

    ```prompt
    Add comments to the following function. Return only the commented code.\n---\n
    ```

    The results will be put into **result/app.txt**. Open that file up, and compare it to the function file in **sample-code**.

2. Next, choose option **2** to write unit tests for that same function and enter the following prompt.

    ```prompt
    Write four unit tests for the following function.\n---\n
    ```

    The results will replace what was in **result/app.txt**, and details four unit tests for that function.

3. Next, choose option **3** to fix bugs in an app for playing Go Fish. Enter the following prompt.

    ```prompt
    Fix the code below for an app to play Go Fish with the user. Return only the corrected code.\n---\n
    ```

    The results will replace what was in **result/app.txt**, and should have very similar code with a few things corrected.

    
    - **Python**: Fixes are made on line 18 and 31

    The app for Go Fish in **sample-code** can be run if you replace the lines that contain bugs with the response from Azure OpenAI. If you run it without the fixes, it will not work correctly.
    
    > **Note**: It's important to note that even though the code for this Go Fish app was corrected for some syntax, it's not a strictly accurate representation of the game. If you look closely, there are issues with not checking if the deck is empty when drawing cards, not removing pairs from the players hand when they get a pair, and a few other bugs that require understanding of card games to realize. This is a great example of how useful generative AI models can be to assist with code generation, but can't be trusted as correct and need to be verified by the developer.

    If you would like to see the full response from Azure OpenAI, you can set the **printFullResponse** variable to `True`, and rerun the app.
