.class public Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _kind:I


# direct methods
.method protected constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    .line 198
    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    .line 199
    return-void
.end method


# virtual methods
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5f

    const/4 v10, -0x1

    const/16 v9, 0x3a

    const/4 v7, 0x0

    .line 204
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    packed-switch v8, :pswitch_data_f0

    .line 270
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 206
    :pswitch_11
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    :goto_16
    return-object v7

    .line 208
    :pswitch_17
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 210
    :pswitch_1d
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    goto :goto_16

    .line 213
    :pswitch_22
    :try_start_22
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_27

    move-result-object v7

    goto :goto_16

    .line 214
    :catch_27
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_valueClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    goto :goto_16

    .line 221
    :pswitch_3c
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v7

    goto :goto_16

    .line 224
    :pswitch_41
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    goto :goto_16

    .line 227
    :pswitch_46
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 228
    .local v3, "ix":I
    if-gez v3, :cond_52

    .line 229
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_16

    .line 231
    :cond_52
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "first":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 234
    if-gez v3, :cond_68

    .line 235
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 237
    :cond_68
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "second":Ljava/lang/String;
    new-instance v7, Ljava/util/Locale;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v6, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 241
    .end local v1    # "first":Ljava/lang/String;
    .end local v3    # "ix":I
    .end local v6    # "second":Ljava/lang/String;
    :pswitch_78
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    goto :goto_16

    .line 243
    :pswitch_7d
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    goto :goto_16

    .line 245
    :pswitch_82
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_16

    .line 247
    :pswitch_87
    const-string/jumbo v8, "["

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 250
    const/16 v8, 0x5d

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 251
    .local v2, "i":I
    if-ne v2, v10, :cond_a3

    .line 252
    new-instance v7, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    const-string/jumbo v8, "Bracketed IPv6 address must contain closing bracket"

    const-class v9, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v8, p1, v9}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    throw v7

    .line 256
    :cond_a3
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 257
    .local v4, "j":I
    if-le v4, v10, :cond_c1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, "port":I
    :goto_b3
    new-instance v8, Ljava/net/InetSocketAddress;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_16

    .end local v5    # "port":I
    :cond_c1
    move v5, v7

    .line 257
    goto :goto_b3

    .line 260
    .end local v2    # "i":I
    .end local v4    # "j":I
    :cond_c3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 261
    .restart local v3    # "ix":I
    if-ltz v3, :cond_e7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_e7

    .line 263
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 264
    .restart local v5    # "port":I
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_16

    .line 267
    .end local v5    # "port":I
    :cond_e7
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, p1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_16

    .line 204
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_22
        :pswitch_33
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_78
        :pswitch_7d
        :pswitch_82
        :pswitch_87
    .end packed-switch
.end method

.method protected _deserializeFromEmptyString()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 277
    const-string/jumbo v0, ""

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 279
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeFromEmptyString()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
