// Auto-generated by Perses AST.
// DO NOT MODIFY.
grammar PnfC;

AUX_TOKEN__primaryExpression_1
    : '__builtin_va_arg'
    ;
AUX_TOKEN__primaryExpression_2
    : '__builtin_offsetof'
    ;
AUX_TOKEN__typeSpecifier_1
    : '__m128'
    ;
AUX_TOKEN__typeSpecifier_2
    : '__m128d'
    ;
AUX_TOKEN__typeSpecifier_3
    : '__m128i'
    ;
AUX_TOKEN__typeSpecifier_4
    : '__typeof__'
    ;
AUX_TOKEN__functionSpecifier_1
    : '__inline__'
    ;
AUX_TOKEN__functionSpecifier_2
    : '__stdcall'
    ;
AUX_TOKEN__functionSpecifier_3
    : '__declspec'
    ;
AUX_TOKEN__asmKeyword_1
    : 'asm'
    ;
AUX_TOKEN__asmKeyword_2
    : '__asm__'
    ;
AUX_TOKEN__asmKeyword_3
    : '__asm'
    ;
AUX_TOKEN__gccAttributeSpecifier_1
    : '__attribute__'
    ;
AUX_TOKEN__asmStatement_1
    : '__volatile__'
    ;
IncludeDirective
    : '#' 'include' (~[\n])*
    ;
Auto
    : 'auto'
    ;
Break
    : 'break'
    ;
Case
    : 'case'
    ;
Char
    : 'char'
    ;
Const
    : 'const'
    ;
Nonnull
    : '_Nonnull'
    ;
Nullable
    : '_Nullable'
    ;
Continue
    : 'continue'
    ;
Default
    : 'default'
    ;
Do
    : 'do'
    ;
Double
    : 'double'
    ;
Else
    : 'else'
    ;
Enum
    : 'enum'
    ;
Extern
    : 'extern'
    ;
Float
    : 'float'
    ;
For
    : 'for'
    ;
Goto
    : 'goto'
    ;
If
    : 'if'
    ;
Inline
    : 'inline'
    ;
Int
    : 'int'
    ;
Long
    : 'long'
    ;
Register
    : 'register'
    ;
Restrict
    : 'restrict'
    ;
Restrict_gcc
    : '__restrict__'
    ;
Restrict_gcc2
    : '__restrict'
    ;
Extension_gcc
    : '__extension__'
    ;
Return
    : 'return'
    ;
Short
    : 'short'
    ;
Signed
    : 'signed'
    ;
Sizeof
    : 'sizeof'
    ;
Static
    : 'static'
    ;
Struct
    : 'struct'
    ;
Switch
    : 'switch'
    ;
Typedef
    : 'typedef'
    ;
Union
    : 'union'
    ;
Unsigned
    : 'unsigned'
    ;
Void
    : 'void'
    ;
Volatile
    : 'volatile'
    ;
While
    : 'while'
    ;
Alignas
    : '_Alignas'
    ;
Alignof
    : '_Alignof'
    ;
Alignof_gcc
    : '__alignof__'
    ;
Atomic
    : '_Atomic'
    ;
Bool
    : '_Bool'
    ;
Complex
    : '_Complex'
    ;
Generic
    : '_Generic'
    ;
Imaginary
    : '_Imaginary'
    ;
Noreturn
    : '_Noreturn'
    ;
StaticAssert
    : '_Static_assert'
    ;
ThreadLocal
    : '_Thread_local'
    ;
LeftParen
    : '('
    ;
RightParen
    : ')'
    ;
LeftBracket
    : '['
    ;
RightBracket
    : ']'
    ;
LeftBrace
    : '{'
    ;
RightBrace
    : '}'
    ;
Less
    : '<'
    ;
LessEqual
    : '<='
    ;
Greater
    : '>'
    ;
GreaterEqual
    : '>='
    ;
LeftShift
    : '<<'
    ;
RightShift
    : '>>'
    ;
Plus
    : '+'
    ;
PlusPlus
    : '++'
    ;
Minus
    : '-'
    ;
MinusMinus
    : '--'
    ;
Star
    : '*'
    ;
Div
    : '/'
    ;
Mod
    : '%'
    ;
And
    : '&'
    ;
Or
    : '|'
    ;
AndAnd
    : '&&'
    ;
OrOr
    : '||'
    ;
Caret
    : '^'
    ;
Not
    : '!'
    ;
Tilde
    : '~'
    ;
Question
    : '?'
    ;
Colon
    : ':'
    ;
Semi
    : ';'
    ;
Comma
    : ','
    ;
Assign
    : '='
    ;
StarAssign
    : '*='
    ;
DivAssign
    : '/='
    ;
ModAssign
    : '%='
    ;
PlusAssign
    : '+='
    ;
MinusAssign
    : '-='
    ;
LeftShiftAssign
    : '<<='
    ;
RightShiftAssign
    : '>>='
    ;
AndAssign
    : '&='
    ;
XorAssign
    : '^='
    ;
OrAssign
    : '|='
    ;
Equal
    : '=='
    ;
NotEqual
    : '!='
    ;
Arrow
    : '->'
    ;
Dot
    : '.'
    ;
Ellipsis
    : '...'
    ;
Identifier
    : IdentifierNondigit (IdentifierNondigit | Digit)*
    ;
fragment IdentifierNondigit
    : Nondigit
    | UniversalCharacterName
    ;
fragment Nondigit
    : [a-zA-Z_]
    ;
fragment Digit
    : [0-9]
    ;
fragment UniversalCharacterName
    : '\\u' HexQuad
    | '\\U' HexQuad HexQuad
    ;
fragment HexQuad
    : HexadecimalDigit HexadecimalDigit HexadecimalDigit HexadecimalDigit
    ;
Constant
    : IntegerConstant
    | FloatingConstant
    | CharacterConstant
    ;
fragment IntegerConstant
    : DecimalConstant IntegerSuffix?
    | OctalConstant IntegerSuffix?
    | HexadecimalConstant IntegerSuffix?
    | BinaryConstant
    ;
fragment BinaryConstant
    : '0' [bB] [0-1]+
    ;
fragment DecimalConstant
    : NonzeroDigit Digit*
    ;
fragment OctalConstant
    : '0' OctalDigit*
    ;
fragment HexadecimalConstant
    : HexadecimalPrefix HexadecimalDigit+
    ;
fragment HexadecimalPrefix
    : '0' [xX]
    ;
fragment NonzeroDigit
    : [1-9]
    ;
fragment OctalDigit
    : [0-7]
    ;
fragment HexadecimalDigit
    : [0-9a-fA-F]
    ;
fragment IntegerSuffix
    : UnsignedSuffix LongSuffix?
    | UnsignedSuffix LongLongSuffix
    | LongSuffix UnsignedSuffix?
    | LongLongSuffix UnsignedSuffix?
    ;
fragment UnsignedSuffix
    : [uU]
    ;
fragment LongSuffix
    : [lL]
    ;
fragment LongLongSuffix
    : 'll'
    | 'LL'
    ;
fragment FloatingConstant
    : DecimalFloatingConstant
    | HexadecimalFloatingConstant
    ;
fragment DecimalFloatingConstant
    : FractionalConstant ExponentPart? FloatingSuffix?
    | DigitSequence ExponentPart FloatingSuffix?
    ;
fragment HexadecimalFloatingConstant
    : HexadecimalPrefix HexadecimalFractionalConstant BinaryExponentPart FloatingSuffix?
    | HexadecimalPrefix HexadecimalDigitSequence BinaryExponentPart FloatingSuffix?
    ;
fragment FractionalConstant
    : DigitSequence? '.' DigitSequence
    | DigitSequence '.'
    ;
fragment ExponentPart
    : 'e' Sign? DigitSequence
    | 'E' Sign? DigitSequence
    ;
fragment Sign
    : '+'
    | '-'
    ;
fragment DigitSequence
    : Digit+
    ;
fragment HexadecimalFractionalConstant
    : HexadecimalDigitSequence? '.' HexadecimalDigitSequence
    | HexadecimalDigitSequence '.'
    ;
fragment BinaryExponentPart
    : 'p' Sign? DigitSequence
    | 'P' Sign? DigitSequence
    ;
fragment HexadecimalDigitSequence
    : HexadecimalDigit+
    ;
fragment FloatingSuffix
    : 'f'
    | 'l'
    | 'F'
    | 'L'
    ;
fragment CharacterConstant
    : '\'' CCharSequence '\''
    | 'L\'' CCharSequence '\''
    | 'u\'' CCharSequence '\''
    | 'U\'' CCharSequence '\''
    ;
fragment CCharSequence
    : CChar+
    ;
fragment CChar
    : ~['\\\r\n]
    | EscapeSequence
    ;
fragment EscapeSequence
    : SimpleEscapeSequence
    | OctalEscapeSequence
    | HexadecimalEscapeSequence
    | UniversalCharacterName
    ;
fragment SimpleEscapeSequence
    : '\\' ['"?abfnrtv\\]
    ;
fragment OctalEscapeSequence
    : '\\' OctalDigit
    | '\\' OctalDigit OctalDigit
    | '\\' OctalDigit OctalDigit OctalDigit
    ;
fragment HexadecimalEscapeSequence
    : '\\x' HexadecimalDigit+
    ;
StringLiteral
    : EncodingPrefix? '"' SCharSequence? '"'
    ;
fragment EncodingPrefix
    : 'u8'
    | 'u'
    | 'U'
    | 'L'
    ;
fragment SCharSequence
    : SChar+
    ;
fragment SChar
    : ~["\\\r\n]
    | EscapeSequence
    | '\\\n'
    | '\\\r\n'
    ;
ComplexDefine
    : '#' Whitespace? 'define' (~[#])* -> skip

    ;
AsmBlock
    : 'asm' '{' (~[}])* '}' -> skip

    ;
LineAfterPreprocessing
    : '#line' Whitespace* (~[\r\n])* -> skip

    ;
LineDirective
    : '#' Whitespace? DecimalConstant Whitespace? StringLiteral (~[\r\n])* -> skip

    ;
PragmaDirective
    : '#' Whitespace? 'pragma' Whitespace (~[\r\n])* -> skip

    ;
Whitespace
    : [ \t]+ -> skip

    ;
Newline
    : ('\r' '\n'?
    | '\n')
 -> skip

    ;
BlockComment
    : '/*' .*? '*/' -> skip

    ;
LineComment
    : '//' (~[\r\n])* -> skip

    ;


genericSelection
    : Generic LeftParen assignmentExpression Comma genericAssocList RightParen
    ;

genericAssociation
    : altnt_block__genericAssociation_1 Colon assignmentExpression
    ;

unaryExpression
    : postfixExpression
    | aux_rule__unaryExpression_5
    | aux_rule__unaryExpression_6
    | aux_rule__unaryExpression_7
    | aux_rule__unaryExpression_8
    ;

unaryOperator
    : And
    | Star
    | Plus
    | Minus
    | Tilde
    | Not
    ;

castExpression
    : unaryExpression
    | aux_rule__castExpression_2
    ;

conditionalExpression
    : logicalOrExpression optional__conditionalExpression_2
    ;

assignmentExpression
    : conditionalExpression
    | aux_rule__assignmentExpression_1
    ;

assignmentOperator
    : Assign
    | StarAssign
    | DivAssign
    | ModAssign
    | PlusAssign
    | MinusAssign
    | LeftShiftAssign
    | RightShiftAssign
    | AndAssign
    | XorAssign
    | OrAssign
    ;

constantExpression
    : conditionalExpression
    ;

declaration
    : aux_rule__declaration_3
    | staticAssertDeclaration
    | asmStatement
    ;

declarationSpecifiers
    : declarationSpecifier+
    ;

initDeclarator
    : declarator optional__initDeclarator_2
    ;

typeSpecifier
    : Void
    | Char
    | Short
    | Int
    | Long
    | Float
    | Double
    | Signed
    | Unsigned
    | Bool
    | Complex
    | AUX_TOKEN__typeSpecifier_1
    | AUX_TOKEN__typeSpecifier_2
    | AUX_TOKEN__typeSpecifier_3
    | atomicTypeSpecifier
    | structOrUnionSpecifier
    | enumSpecifier
    | typedefName
    | aux_rule__typeSpecifier_3
    ;

typeSpecifierWithAttrList
    : typeSpecifier optional__typeSpecifierWithAttrList_1
    ;

structOrUnionSpecifier
    : structOrUnion altnt_block__structOrUnionSpecifier_2
    ;

structOrUnion
    : Struct
    | Union
    ;

specifierQualifierList
    : altnt_block__specifierQualifierList_3 optional__specifierQualifierList_1
    ;

structDeclarator
    : declarator
    | aux_rule__structDeclarator_2
    ;

enumSpecifier
    : Enum altnt_block__enumSpecifier_3
    ;

enumerator
    : typedefName optional__enumerator_2
    ;

atomicTypeSpecifier
    : Atomic LeftParen typeName RightParen
    ;

typeQualifier
    : Const
    | Restrict
    | Restrict_gcc
    | Restrict_gcc2
    | Volatile
    | Atomic
    | Nonnull
    | Nullable
    ;

alignmentSpecifier
    : Alignas LeftParen altnt_block__alignmentSpecifier_1 RightParen
    ;

declarator
    : optional__declarator_1 directDeclarator kleene_star__declarator_2
    ;

gccDeclaratorExtension
    : aux_rule__gccDeclaratorExtension_2
    | gccAttributeSpecifier
    ;

asmKeyword
    : AUX_TOKEN__asmKeyword_1
    | AUX_TOKEN__asmKeyword_2
    | AUX_TOKEN__asmKeyword_3
    ;

gccAttributeSpecifier
    : AUX_TOKEN__gccAttributeSpecifier_1 LeftParen LeftParen gccAttributeList RightParen RightParen
    ;

gccAttributeList
    : aux_rule__gccAttributeList_3?
    ;

gccAttribute
    : aux_rule__gccAttribute_4?
    ;

pointer
    : altnt_block__pointer_8 altnt_block__pointer_5
    ;

typeQualifierList
    : aux_rule__typeQualifierList_1+
    ;

parameterTypeList
    : parameterList optional__parameterTypeList_2
    ;

parameterDeclaration
    : declarationSpecifiers altnt_block__parameterDeclaration_2
    ;

typeName
    : specifierQualifierList optional__typeName_1
    ;

abstractDeclarator
    : pointer
    | aux_rule__abstractDeclarator_3
    ;

typedefName
    : Identifier
    ;

initializer
    : assignmentExpression
    | aux_rule__initializer_2
    ;

designation
    : designatorList Assign
    ;

staticAssertDeclaration
    : StaticAssert LeftParen constantExpression Comma kleene_plus__primaryExpression_1 RightParen Semi
    ;

asmStatement
    : asmKeyword optional__asmStatement_2 LeftParen optional__asmStatement_6 kleene_star__asmStatement_12 RightParen Semi
    ;

labeledStatement
    : altnt_block__labeledStatement_1 Colon statement
    ;

compoundStatement
    : LeftBrace optional__compoundStatement_1 RightBrace
    ;

expressionStatement
    : optional__postfixExpression_1 Semi
    ;

jumpStatement
    : altnt_block__jumpStatement_2 Semi
    ;

compilationUnit
    : optional__compilationUnit_1 EOF
    ;

functionDefinition
    : optional__primaryExpression_2 optional__functionDefinition_2 declarator optional__functionDefinition_3 compoundStatement
    ;

kleene_plus__primaryExpression_1
    : StringLiteral+
    ;

optional__primaryExpression_2
    : Extension_gcc?
    ;

optional__postfixExpression_1
    : expression?
    ;

aux_rule__conditionalExpression_1
    : Question expression Colon conditionalExpression
    ;

optional__conditionalExpression_2
    : aux_rule__conditionalExpression_1?
    ;

optional__declaration_2
    : initDeclaratorList?
    ;

optional__typeSpecifierWithAttrList_1
    : gccAttributeSpecifier?
    ;

optional__structOrUnionSpecifier_1
    : Identifier?
    ;

optional__structDeclaration_2
    : structDeclaratorList?
    ;

optional__specifierQualifierList_1
    : specifierQualifierList?
    ;

optional__structDeclarator_1
    : declarator?
    ;

optional__declarator_1
    : pointer?
    ;

kleene_star__declarator_2
    : gccDeclaratorExtension*
    ;

optional__directDeclarator_3
    : assignmentExpression?
    ;

optional__directDeclarator_6
    : identifierList?
    ;

aux_rule__gccAttributeList_1
    : Comma gccAttribute
    ;

kleene_star__gccAttributeList_2
    : aux_rule__gccAttributeList_1*
    ;

aux_rule__gccAttributeList_3
    : gccAttribute kleene_star__gccAttributeList_2
    ;

aux_rule__gccAttribute_2
    : LeftParen optional__postfixExpression_1 RightParen
    ;

optional__gccAttribute_3
    : aux_rule__gccAttribute_2?
    ;

aux_rule__gccAttribute_4
    : ~(Comma | LeftParen | RightParen) optional__gccAttribute_3
    ;

optional__pointer_1
    : typeQualifierList?
    ;

aux_rule__typeQualifierList_1
    : typeQualifier
    | gccAttributeSpecifier
    ;

optional__typeName_1
    : abstractDeclarator?
    ;

optional__directAbstractDeclarator_5
    : parameterTypeList?
    ;

optional__initializerList_1
    : designation?
    ;

aux_rule__asmStatement_1
    : Volatile
    | AUX_TOKEN__asmStatement_1
    ;

optional__asmStatement_2
    : aux_rule__asmStatement_1?
    ;

aux_rule__asmStatement_3
    : Comma logicalOrExpression
    ;

kleene_star__asmStatement_4
    : aux_rule__asmStatement_3*
    ;

aux_rule__asmStatement_5
    : logicalOrExpression kleene_star__asmStatement_4
    ;

optional__asmStatement_6
    : aux_rule__asmStatement_5?
    ;

aux_rule__asmStatement_11
    : Colon optional__asmStatement_6
    ;

kleene_star__asmStatement_12
    : aux_rule__asmStatement_11*
    ;

optional__compoundStatement_1
    : blockItemList?
    ;

aux_rule__selectionStatement_1
    : Else statement
    ;

optional__selectionStatement_2
    : aux_rule__selectionStatement_1?
    ;

optional__compilationUnit_1
    : translationUnit?
    ;

optional__functionDefinition_2
    : declarationSpecifiers?
    ;

optional__functionDefinition_3
    : declarationList?
    ;

aux_rule__expression_2
    : Comma assignmentExpression
    ;

kleene_star__expression_1
    : aux_rule__expression_2*
    ;

expression
    : assignmentExpression kleene_star__expression_1
    ;

aux_rule__genericAssocList_2
    : Comma genericAssociation
    ;

kleene_star__genericAssocList_1
    : aux_rule__genericAssocList_2*
    ;

genericAssocList
    : genericAssociation kleene_star__genericAssocList_1
    ;

aux_rule__postfixExpression_3
    : aux_rule__postfixExpression_10
    | aux_rule__postfixExpression_11
    | PlusPlus
    | MinusMinus
    | aux_rule__postfixExpression_12
    ;

kleene_star__postfixExpression_2
    : aux_rule__postfixExpression_3*
    ;

postfixExpression
    : aux_rule__postfixExpression_4 kleene_star__postfixExpression_2
    ;

aux_rule__initializerList_4
    : Comma optional__initializerList_1 initializer
    ;

kleene_star__initializerList_3
    : aux_rule__initializerList_4*
    ;

initializerList
    : optional__initializerList_1 initializer kleene_star__initializerList_3
    ;

aux_rule__multiplicativeExpression_2
    : altnt_block__multiplicativeExpression_3 castExpression
    ;

kleene_star__multiplicativeExpression_1
    : aux_rule__multiplicativeExpression_2*
    ;

multiplicativeExpression
    : castExpression kleene_star__multiplicativeExpression_1
    ;

aux_rule__additiveExpression_2
    : altnt_block__additiveExpression_3 multiplicativeExpression
    ;

kleene_star__additiveExpression_1
    : aux_rule__additiveExpression_2*
    ;

additiveExpression
    : multiplicativeExpression kleene_star__additiveExpression_1
    ;

aux_rule__shiftExpression_2
    : altnt_block__shiftExpression_3 additiveExpression
    ;

kleene_star__shiftExpression_1
    : aux_rule__shiftExpression_2*
    ;

shiftExpression
    : additiveExpression kleene_star__shiftExpression_1
    ;

aux_rule__relationalExpression_2
    : altnt_block__relationalExpression_3 shiftExpression
    ;

kleene_star__relationalExpression_1
    : aux_rule__relationalExpression_2*
    ;

relationalExpression
    : shiftExpression kleene_star__relationalExpression_1
    ;

aux_rule__equalityExpression_2
    : altnt_block__equalityExpression_3 relationalExpression
    ;

kleene_star__equalityExpression_1
    : aux_rule__equalityExpression_2*
    ;

equalityExpression
    : relationalExpression kleene_star__equalityExpression_1
    ;

aux_rule__andExpression_2
    : And equalityExpression
    ;

kleene_star__andExpression_1
    : aux_rule__andExpression_2*
    ;

andExpression
    : equalityExpression kleene_star__andExpression_1
    ;

aux_rule__exclusiveOrExpression_2
    : Caret andExpression
    ;

kleene_star__exclusiveOrExpression_1
    : aux_rule__exclusiveOrExpression_2*
    ;

exclusiveOrExpression
    : andExpression kleene_star__exclusiveOrExpression_1
    ;

aux_rule__inclusiveOrExpression_2
    : Or exclusiveOrExpression
    ;

kleene_star__inclusiveOrExpression_1
    : aux_rule__inclusiveOrExpression_2*
    ;

inclusiveOrExpression
    : exclusiveOrExpression kleene_star__inclusiveOrExpression_1
    ;

aux_rule__logicalAndExpression_2
    : AndAnd inclusiveOrExpression
    ;

kleene_star__logicalAndExpression_1
    : aux_rule__logicalAndExpression_2*
    ;

logicalAndExpression
    : inclusiveOrExpression kleene_star__logicalAndExpression_1
    ;

aux_rule__logicalOrExpression_2
    : OrOr logicalAndExpression
    ;

kleene_star__logicalOrExpression_1
    : aux_rule__logicalOrExpression_2*
    ;

logicalOrExpression
    : logicalAndExpression kleene_star__logicalOrExpression_1
    ;

aux_rule__initDeclaratorList_2
    : Comma initDeclarator
    ;

kleene_star__initDeclaratorList_1
    : aux_rule__initDeclaratorList_2*
    ;

initDeclaratorList
    : initDeclarator kleene_star__initDeclaratorList_1
    ;

structDeclarationList
    : kleene_plus__structDeclarationList_3
    ;

aux_rule__structDeclaratorList_2
    : Comma structDeclarator
    ;

kleene_star__structDeclaratorList_1
    : aux_rule__structDeclaratorList_2*
    ;

structDeclaratorList
    : structDeclarator kleene_star__structDeclaratorList_1
    ;

aux_rule__enumeratorList_2
    : Comma enumerator
    ;

kleene_star__enumeratorList_1
    : aux_rule__enumeratorList_2*
    ;

enumeratorList
    : enumerator kleene_star__enumeratorList_1
    ;

aux_rule__directDeclarator_8
    : aux_rule__directDeclarator_14
    | aux_rule__directDeclarator_15
    ;

kleene_star__directDeclarator_7
    : aux_rule__directDeclarator_8*
    ;

aux_rule__directDeclarator_9
    : Identifier
    | aux_rule__directDeclarator_16
    ;

directDeclarator
    : aux_rule__directDeclarator_9 kleene_star__directDeclarator_7
    ;

aux_rule__identifierList_2
    : Comma Identifier
    ;

kleene_star__identifierList_1
    : aux_rule__identifierList_2*
    ;

identifierList
    : Identifier kleene_star__identifierList_1
    ;

aux_rule__parameterList_2
    : Comma parameterDeclaration
    ;

kleene_star__parameterList_1
    : aux_rule__parameterList_2*
    ;

parameterList
    : parameterDeclaration kleene_star__parameterList_1
    ;

aux_rule__directAbstractDeclarator_13
    : aux_rule__directAbstractDeclarator_21
    | aux_rule__directAbstractDeclarator_22
    ;

kleene_star__directAbstractDeclarator_12
    : aux_rule__directAbstractDeclarator_13*
    ;

aux_rule__directAbstractDeclarator_14
    : aux_rule__directAbstractDeclarator_23
    | aux_rule__directAbstractDeclarator_24
    ;

directAbstractDeclarator
    : aux_rule__directAbstractDeclarator_14 kleene_star__directAbstractDeclarator_12
    ;

designatorList
    : kleene_plus__designatorList_3
    ;

blockItemList
    : kleene_plus__blockItemList_3
    ;

translationUnit
    : kleene_plus__translationUnit_3
    ;

aux_rule__declarationList_2
    : declaration
    ;

declarationList
    : kleene_plus__declarationList_3
    ;

kleene_plus__structDeclarationList_3
    : aux_rule__structDeclarationList_2+
    ;

kleene_plus__designatorList_3
    : aux_rule__designatorList_2+
    ;

kleene_plus__blockItemList_3
    : aux_rule__blockItemList_2+
    ;

kleene_plus__translationUnit_3
    : aux_rule__translationUnit_2+
    ;

kleene_plus__declarationList_3
    : aux_rule__declarationList_2+
    ;

optional__postfixExpression_5
    : Comma?
    ;

aux_rule__initDeclarator_1
    : Assign initializer
    ;

optional__initDeclarator_2
    : aux_rule__initDeclarator_1?
    ;

aux_rule__enumerator_1
    : Assign constantExpression
    ;

optional__enumerator_2
    : aux_rule__enumerator_1?
    ;

aux_rule__parameterTypeList_1
    : Comma Ellipsis
    ;

optional__parameterTypeList_2
    : aux_rule__parameterTypeList_1?
    ;

altnt_block__primaryExpression_3
    : aux_rule__primaryExpression_4
    | aux_rule__primaryExpression_5
    | aux_rule__primaryExpression_6
    | aux_rule__primaryExpression_7
    ;

altnt_block__unaryExpression_1
    : PlusPlus
    | MinusMinus
    | Sizeof
    ;

altnt_block__unaryExpression_2
    : aux_rule__unaryExpression_9
    | aux_rule__unaryExpression_10
    ;

altnt_block__genericAssociation_1
    : typeName
    | Default
    ;

altnt_block__postfixExpression_7
    : Dot
    | Arrow
    ;

altnt_block__postfixExpression_8
    : optional__primaryExpression_2 LeftParen typeName RightParen LeftBrace initializerList optional__postfixExpression_5
    ;

altnt_block__multiplicativeExpression_3
    : Star
    | Div
    | Mod
    ;

altnt_block__additiveExpression_3
    : Plus
    | Minus
    ;

altnt_block__shiftExpression_3
    : LeftShift
    | RightShift
    ;

altnt_block__relationalExpression_3
    : Less
    | Greater
    | LessEqual
    | GreaterEqual
    ;

altnt_block__equalityExpression_3
    : Equal
    | NotEqual
    ;

altnt_block__alignmentSpecifier_1
    : typeName
    | constantExpression
    ;

altnt_block__typeSpecifier_1
    : aux_rule__typeSpecifier_4
    | aux_rule__typeSpecifier_5
    ;

altnt_block__structOrUnionSpecifier_2
    : aux_rule__structOrUnionSpecifier_3
    | Identifier
    ;

altnt_block__enumSpecifier_3
    : Identifier
    | aux_rule__enumSpecifier_6
    ;

altnt_block__pointer_5
    : optional__pointer_1 optional__declarator_1
    ;

altnt_block__directDeclarator_10
    : aux_rule__directDeclarator_17
    | aux_rule__directDeclarator_18
    ;

altnt_block__directDeclarator_11
    : parameterTypeList
    | optional__directDeclarator_6
    ;

altnt_block__directAbstractDeclarator_15
    : aux_rule__directAbstractDeclarator_25
    | Star
    | aux_rule__directAbstractDeclarator_26
    ;

altnt_block__directAbstractDeclarator_17
    : altnt_block__directAbstractDeclarator_20 RightParen kleene_star__declarator_2
    ;

altnt_block__labeledStatement_1
    : Identifier
    | aux_rule__labeledStatement_2
    | Default
    ;

altnt_block__jumpStatement_2
    : Continue
    | Break
    | aux_rule__jumpStatement_4
    | aux_rule__jumpStatement_5
    ;

altnt_block__enumSpecifier_4
    : optional__structOrUnionSpecifier_1 LeftBrace enumeratorList optional__postfixExpression_5
    ;

altnt_block__directDeclarator_12
    : aux_rule__directDeclarator_19
    | aux_rule__directDeclarator_20
    ;

altnt_block__iterationStatement_7
    : altnt_block__iterationStatement_8 optional__postfixExpression_1 Semi optional__postfixExpression_1
    ;

altnt_block__jumpStatement_3
    : Identifier
    | unaryExpression
    ;

aux_rule__postfixExpression_4
    : Identifier
    | Constant
    | kleene_plus__primaryExpression_1
    | genericSelection
    | aux_rule__postfixExpression_13
    | aux_rule__postfixExpression_14
    ;

declarationSpecifier
    : Typedef
    | Extern
    | Static
    | ThreadLocal
    | Auto
    | Register
    | typeSpecifierWithAttrList
    | typeQualifier
    | Inline
    | Noreturn
    | AUX_TOKEN__functionSpecifier_1
    | AUX_TOKEN__functionSpecifier_2
    | gccAttributeSpecifier
    | aux_rule__declarationSpecifier_1
    | alignmentSpecifier
    ;

aux_rule__structDeclarationList_2
    : aux_rule__structDeclarationList_4
    | staticAssertDeclaration
    ;

aux_rule__designatorList_2
    : aux_rule__designatorList_4
    | aux_rule__designatorList_5
    ;

statement
    : labeledStatement
    | compoundStatement
    | expressionStatement
    | aux_rule__statement_3
    | aux_rule__statement_4
    | jumpStatement
    | asmStatement
    | aux_rule__statement_5
    ;

aux_rule__blockItemList_2
    : declaration
    | statement
    ;

aux_rule__translationUnit_2
    : functionDefinition
    | declaration
    | IncludeDirective
    | Semi
    ;

altnt_block__unaryExpression_3
    : Alignof
    | Alignof_gcc
    ;

altnt_block__unaryExpression_4
    : typeName
    | unaryExpression
    ;

altnt_block__typeSpecifier_2
    : AUX_TOKEN__typeSpecifier_1
    | AUX_TOKEN__typeSpecifier_2
    | AUX_TOKEN__typeSpecifier_3
    ;

altnt_block__specifierQualifierList_3
    : typeSpecifierWithAttrList
    | typeQualifier
    ;

altnt_block__pointer_8
    : Star
    | Caret
    ;

altnt_block__directDeclarator_13
    : optional__directDeclarator_3
    | Star
    ;

altnt_block__parameterDeclaration_2
    : declarator
    | optional__typeName_1
    ;

altnt_block__directAbstractDeclarator_20
    : abstractDeclarator
    | optional__directAbstractDeclarator_5
    ;

altnt_block__iterationStatement_8
    : aux_rule__iterationStatement_9
    | declaration
    ;

altnt_block__statement_1
    : aux_rule__statement_6
    | aux_rule__statement_7
    ;

altnt_block__statement_2
    : Switch
    | While
    ;

aux_rule__unaryExpression_5
    : unaryOperator castExpression
    ;

aux_rule__unaryExpression_6
    : AndAnd Identifier
    ;

aux_rule__unaryExpression_7
    : altnt_block__unaryExpression_1 unaryExpression
    ;

aux_rule__unaryExpression_8
    : altnt_block__unaryExpression_2 RightParen
    ;

aux_rule__castExpression_2
    : optional__primaryExpression_2 LeftParen typeName RightParen castExpression
    ;

aux_rule__assignmentExpression_1
    : unaryExpression assignmentOperator assignmentExpression
    ;

aux_rule__declaration_3
    : optional__primaryExpression_2 declarationSpecifiers optional__declaration_2 Semi
    ;

aux_rule__typeSpecifier_3
    : altnt_block__typeSpecifier_1 RightParen
    ;

aux_rule__structDeclarator_2
    : optional__structDeclarator_1 Colon constantExpression
    ;

aux_rule__gccDeclaratorExtension_2
    : asmKeyword LeftParen kleene_plus__primaryExpression_1 RightParen
    ;

aux_rule__abstractDeclarator_3
    : optional__declarator_1 directAbstractDeclarator kleene_star__declarator_2
    ;

aux_rule__initializer_2
    : LeftBrace initializerList optional__postfixExpression_5 RightBrace
    ;

aux_rule__postfixExpression_10
    : LeftBracket expression RightBracket
    ;

aux_rule__postfixExpression_11
    : LeftParen optional__postfixExpression_1 RightParen
    ;

aux_rule__postfixExpression_12
    : altnt_block__postfixExpression_7 Identifier
    ;

aux_rule__directDeclarator_14
    : LeftBracket altnt_block__directDeclarator_10 RightBracket
    ;

aux_rule__directDeclarator_15
    : LeftParen altnt_block__directDeclarator_11 RightParen
    ;

aux_rule__directDeclarator_16
    : LeftParen optional__typeSpecifierWithAttrList_1 declarator RightParen
    ;

aux_rule__directAbstractDeclarator_21
    : LeftParen optional__directAbstractDeclarator_5 RightParen kleene_star__declarator_2
    ;

aux_rule__directAbstractDeclarator_22
    : LeftBracket altnt_block__directAbstractDeclarator_15 RightBracket
    ;

aux_rule__directAbstractDeclarator_23
    : LeftBracket altnt_block__directAbstractDeclarator_15 RightBracket
    ;

aux_rule__directAbstractDeclarator_24
    : LeftParen altnt_block__directAbstractDeclarator_17
    ;

aux_rule__primaryExpression_4
    : LeftParen expression
    ;

aux_rule__primaryExpression_5
    : optional__primaryExpression_2 LeftParen compoundStatement
    ;

aux_rule__primaryExpression_6
    : AUX_TOKEN__primaryExpression_1 LeftParen unaryExpression Comma typeName
    ;

aux_rule__primaryExpression_7
    : AUX_TOKEN__primaryExpression_2 LeftParen typeName Comma unaryExpression
    ;

aux_rule__unaryExpression_9
    : Sizeof LeftParen typeName
    ;

aux_rule__unaryExpression_10
    : altnt_block__unaryExpression_3 LeftParen altnt_block__unaryExpression_4
    ;

aux_rule__typeSpecifier_4
    : Extension_gcc LeftParen altnt_block__typeSpecifier_2
    ;

aux_rule__typeSpecifier_5
    : AUX_TOKEN__typeSpecifier_4 LeftParen constantExpression
    ;

aux_rule__structOrUnionSpecifier_3
    : optional__structOrUnionSpecifier_1 LeftBrace structDeclarationList RightBrace
    ;

aux_rule__enumSpecifier_6
    : altnt_block__enumSpecifier_4 RightBrace
    ;

aux_rule__directDeclarator_17
    : altnt_block__directDeclarator_12 assignmentExpression
    ;

aux_rule__directDeclarator_18
    : optional__pointer_1 altnt_block__directDeclarator_13
    ;

aux_rule__directAbstractDeclarator_25
    : optional__pointer_1 optional__directDeclarator_3
    ;

aux_rule__directAbstractDeclarator_26
    : altnt_block__directDeclarator_12 assignmentExpression
    ;

aux_rule__labeledStatement_2
    : Case constantExpression
    ;

aux_rule__jumpStatement_4
    : Return optional__postfixExpression_1
    ;

aux_rule__jumpStatement_5
    : Goto altnt_block__jumpStatement_3
    ;

aux_rule__directDeclarator_19
    : Static optional__pointer_1
    ;

aux_rule__directDeclarator_20
    : typeQualifierList Static
    ;

aux_rule__postfixExpression_13
    : altnt_block__primaryExpression_3 RightParen
    ;

aux_rule__postfixExpression_14
    : altnt_block__postfixExpression_8 RightBrace
    ;

aux_rule__declarationSpecifier_1
    : AUX_TOKEN__functionSpecifier_3 LeftParen Identifier RightParen
    ;

aux_rule__structDeclarationList_4
    : optional__primaryExpression_2 specifierQualifierList optional__structDeclaration_2 Semi
    ;

aux_rule__designatorList_4
    : LeftBracket constantExpression RightBracket
    ;

aux_rule__designatorList_5
    : Dot Identifier
    ;

aux_rule__statement_3
    : If LeftParen expression RightParen statement optional__selectionStatement_2
    ;

aux_rule__statement_4
    : Do statement While LeftParen expression RightParen Semi
    ;

aux_rule__statement_5
    : altnt_block__statement_1 RightParen statement
    ;

aux_rule__iterationStatement_9
    : optional__postfixExpression_1 Semi
    ;

aux_rule__statement_6
    : For LeftParen altnt_block__iterationStatement_7
    ;

aux_rule__statement_7
    : altnt_block__statement_2 LeftParen expression
    ;

