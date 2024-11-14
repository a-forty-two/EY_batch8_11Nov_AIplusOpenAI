---
lab:
    title: 'Prompt engineering in your app'
---

# Utilize prompt engineering in your app

When working with the Azure OpenAI Service, how developers shape their prompt greatly impacts how the generative AI model will respond. Azure OpenAI models are able to tailor and format content, if requested in a clear and concise way. In this exercise, you'll learn how different prompts for similar content help shape the AI model's response to better satisfy your requirements.

In scenario for this exercise, you will perform the role of a software developer working on a wildlife marketing campaign. You are exploring how to use generative AI to improve advertising emails and categorize articles that might apply to your team. The prompt engineering techniques used in the exercise can be applied similarly for a variety of use cases.




## Explore prompt engineering techniques

Let's start by exploring some prompt engineering techniques in the Chat playground.

1. In **Azure OpenAI Studio** at `https://oai.azure.com`, in the **Playground** section, select the **Chat** page. The **Chat** playground page consists of three main sections:
    - **Setup** - used to set the context for the model's responses.
    - **Chat session** - used to submit chat messages and view responses.
    - **Configuration** - used to configure settings for the model deployment.
2. In the **Configuration** section, ensure that your model deployment is selected.
3. In the **Setup** area, select the default system message template to set the context for the chat session. The default system message is *You are an AI assistant that helps people find information*.
4. In the **Chat session**, submit the following query:

    ```
    What kind of article is this?
    ---
    Severe drought likely in California
    
    Millions of California residents are bracing for less water and dry lawns as drought threatens to leave a large swath of the region with a growing water shortage.
    
    In a remarkable indication of drought severity, officials in Southern California have declared a first-of-its-kind action limiting outdoor water use to one day a week for nearly 8 million residents.
    
    Much remains to be determined about how daily life will change as people adjust to a drier normal. But officials are warning the situation is dire and could lead to even more severe limits later in the year.
    ```

    The response provides a description of the article. However, suppose you want a more specific format for article categorization.

5. In the **Setup** section change the system message to `You are a news aggregator that categorizes news articles.`

6. Under the new system message, in the **Examples** section, select the **Add** button. Then add the following example.

    **User:**
    
    ```
    What kind of article is this?
    ---
    New York Baseballers Wins Big Against Chicago
    
    New York Baseballers mounted a big 5-0 shutout against the Chicago Cyclones last night, solidifying their win with a 3 run homerun late in the bottom of the 7th inning.
    
    Pitcher Mario Rogers threw 96 pitches with only two hits for New York, marking his best performance this year.
    
    The Chicago Cyclones' two hits came in the 2nd and the 5th innings but were unable to get the runner home to score.
    ```
    
    **Assistant:**
    
    ```
    Sports
      ```

7. Add another example with the following text.

    **User:**
    
    ```
    Categorize this article:
    ---
    Joyous moments at the Oscars
    
    The Oscars this past week where quite something!
    
    Though a certain scandal might have stolen the show, this year's Academy Awards were full of moments that filled us with joy and even moved us to tears.
    These actors and actresses delivered some truly emotional performances, along with some great laughs, to get us through the winter.
    
    From Robin Kline's history-making win to a full performance by none other than Casey Jensen herself, don't miss tomorrows rerun of all the festivities.
    ```
    
    **Assistant:**
    
    ```
    Entertainment
    ```

8. Use the **Apply changes** button at the top of the **Setup** section to update the system message.

9. In the **Chat session** section, resubmit the following prompt:

    ```
    What kind of article is this?
    ---
    Severe drought likely in California
    
    Millions of California residents are bracing for less water and dry lawns as drought threatens to leave a large swath of the region with a growing water shortage.
    
    In a remarkable indication of drought severity, officials in Southern California have declared a first-of-its-kind action limiting outdoor water use to one day a week for nearly 8 million residents.
    
    Much remains to be determined about how daily life will change as people adjust to a drier normal. But officials are warning the situation is dire and could lead to even more severe limits later in the year.
    ```

    The combination of a more specific system message and some examples of expected queries and responses results in a consistent format for the results.

10. In the **Setup** section, change the system message back to the default template, which should be `You are an AI assistant that helps people find information.` with no examples. Then apply the changes.

11. In the **Chat session** section, submit the following prompt:

    ```
    # 1. Create a list of animals
    # 2. Create a list of whimsical names for those animals
    # 3. Combine them randomly into a list of 25 animal and name pairs
    ```

    The model will likely respond with an answer to satisfy the prompt, split into a numbered list. This is an appropriate response, but suppose what you actually wanted was for the model to write a Python program that performs the tasks you described?

12. Change the system message to `You are a coding assistant helping write python code.` and apply the changes.
13. Resubmit the following prompt to the model:

    ```
    # 1. Create a list of animals
    # 2. Create a list of whimsical names for those animals
    # 3. Combine them randomly into a list of 25 animal and name pairs
    ```

    The model should correctly respond with python code doing what the comments requested.



## Configure your application
1. Open prompt_engineering.ipynb notebook file, and replace the following values with your OpenAI model values in the application.
        (your_azure_oai_endpoint)
        (your_azure_oai_key)
        (your_azure_oai_deployment)


## Run your application

### In the folder, open system.txt. For each of the interations, you'll enter the System message in this file and save it. Each iteration will pause first for you to change the system message.


   1. Enter the following prompts (with the **system message** still being entered and saved in `system.txt`).

    **System message**

    ```prompt
    You're an AI assistant who helps people find information. You'll provide answers from the text provided in the prompt, and respond concisely.
    ```

    **User message:**

    ```prompt
    What animal is the favorite of children at Contoso?

    ```

    2. To quit the running event, pass the system message - 'quit' (with the **system message** still being entered and saved in `system.txt)




