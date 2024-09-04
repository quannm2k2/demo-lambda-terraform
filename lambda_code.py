import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('1 2 3 4 5 ... Hello from Lambda!')
    }
