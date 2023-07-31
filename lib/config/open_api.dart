import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties:
        AdditionalProperties(pubName: 'booklink_api', pubAuthor: 'davidfesteban'),
    inputSpecFile: 'config/booklink_open_api.json',
    generatorName: Generator.dart,
    outputDirectory: 'booklink_api')
class OpenApiConfig extends OpenapiGeneratorConfig {}
