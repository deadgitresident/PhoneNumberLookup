import requests

def get_location(phone_number):
    # Replace 'YOUR_API_KEY' with your actual API key
    api_key = 'YOUR_API_KEY'
    url = f'https://api.example.com/lookup?phone={phone_number}&key={api_key}'

    try:
        response = requests.get(url)
        data = response.json()
        if data['success']:
            location = data['location']
            operator = data['operator']
            print(f'Location: {location}\nOperator: {operator}')
        else:
            print('Failed to retrieve location.')
    except requests.exceptions.RequestException as e:
        print(f'Error: {e}')

# Usage: replace 'PHONE_NUMBER' with the desired phone number to track
get_location('PHONE_NUMBER')