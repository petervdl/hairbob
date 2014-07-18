.class public Lcom/newrelic/com/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 145
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_23

    .line 147
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 149
    :cond_23
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string/jumbo v3, "\\\""

    aput-object v3, v1, v2

    .line 150
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string/jumbo v3, "\\\\"

    aput-object v3, v1, v2

    .line 151
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string/jumbo v3, "\\t"

    aput-object v3, v1, v2

    .line 152
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v3, "\\b"

    aput-object v3, v1, v2

    .line 153
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string/jumbo v3, "\\n"

    aput-object v3, v1, v2

    .line 154
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string/jumbo v3, "\\r"

    aput-object v3, v1, v2

    .line 155
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string/jumbo v3, "\\f"

    aput-object v3, v1, v2

    .line 156
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 157
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\\u003c"

    aput-object v3, v1, v2

    .line 158
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\\u003e"

    aput-object v3, v1, v2

    .line 159
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string/jumbo v3, "\\u0026"

    aput-object v3, v1, v2

    .line 160
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\\u003d"

    aput-object v3, v1, v2

    .line 161
    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x27

    const-string/jumbo v3, "\\u0027"

    aput-object v3, v1, v2

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    .line 170
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->push(I)V

    .line 182
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 198
    if-nez p1, :cond_23

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_23
    iput-object p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 202
    return-void
.end method

.method private beforeName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 581
    .local v0, "context":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 582
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 586
    :cond_e
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->newline()V

    .line 587
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 588
    return-void

    .line 583
    :cond_16
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 584
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue(Z)V
    .registers 4
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 631
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_10
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1d

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1d
    :pswitch_1d
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_2c

    if-nez p1, :cond_2c

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2c
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 633
    :goto_30
    return-void

    .line 616
    :pswitch_31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 617
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->newline()V

    goto :goto_30

    .line 621
    :pswitch_39
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 622
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->newline()V

    goto :goto_30

    .line 626
    :pswitch_44
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 627
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_30

    .line 600
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_31
        :pswitch_39
        :pswitch_7
        :pswitch_44
        :pswitch_7
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method

.method private close(IILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 8
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 338
    .local v0, "context":I
    if-eq v0, p2, :cond_11

    if-eq v0, p1, :cond_11

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_11
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 342
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_31
    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    .line 346
    if-ne v0, p2, :cond_3c

    .line 347
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->newline()V

    .line 349
    :cond_3c
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 350
    return-object p0
.end method

.method private newline()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 573
    :cond_4
    return-void

    .line 569
    :cond_5
    iget-object v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    .local v1, "size":I
    :goto_10
    if-ge v0, v1, :cond_4

    .line 571
    iget-object v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private open(ILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "empty"    # I
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 326
    invoke-direct {p0, p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->push(I)V

    .line 327
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-object p0
.end method

.method private peek()I
    .registers 3

    .prologue
    .line 366
    iget v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_d

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_d
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private push(I)V
    .registers 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 354
    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_17

    .line 355
    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 356
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    .line 359
    .end local v0    # "newStack":[I
    :cond_17
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v1, v2

    .line 360
    return-void
.end method

.method private replaceTop(I)V
    .registers 4
    .param p1, "topOfStack"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 377
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-boolean v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v6, :cond_25

    sget-object v5, Lcom/newrelic/com/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 534
    .local v5, "replacements":[Ljava/lang/String;
    :goto_6
    iget-object v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 537
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v3, :cond_48

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 540
    .local v0, "c":C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_28

    .line 541
    aget-object v4, v5, v0

    .line 542
    .local v4, "replacement":Ljava/lang/String;
    if-nez v4, :cond_2f

    .line 537
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 533
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    .end local v5    # "replacements":[Ljava/lang/String;
    :cond_25
    sget-object v5, Lcom/newrelic/com/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_6

    .line 545
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "length":I
    .restart local v5    # "replacements":[Ljava/lang/String;
    :cond_28
    const/16 v6, 0x2028

    if-ne v0, v6, :cond_40

    .line 546
    const-string/jumbo v4, "\\u2028"

    .line 552
    .restart local v4    # "replacement":Ljava/lang/String;
    :cond_2f
    :goto_2f
    if-ge v2, v1, :cond_38

    .line 553
    iget-object v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v1, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 555
    :cond_38
    iget-object v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 556
    add-int/lit8 v2, v1, 0x1

    goto :goto_22

    .line 547
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_40
    const/16 v6, 0x2029

    if-ne v0, v6, :cond_22

    .line 548
    const-string/jumbo v4, "\\u2029"

    .restart local v4    # "replacement":Ljava/lang/String;
    goto :goto_2f

    .line 558
    .end local v0    # "c":C
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_48
    if-ge v2, v3, :cond_51

    .line 559
    iget-object v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v3, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 561
    :cond_51
    iget-object v6, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private writeDeferredName()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 401
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeName()V

    .line 402
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 405
    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 288
    const/4 v0, 0x1

    const-string/jumbo v1, "["

    invoke-direct {p0, v0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 308
    const/4 v0, 0x3

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 525
    iget v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    .line 526
    .local v0, "size":I
    if-gt v0, v2, :cond_15

    if-ne v0, v2, :cond_1e

    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1e

    .line 527
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_1e
    const/4 v1, 0x0

    iput v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    .line 530
    return-void
.end method

.method public endArray()Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    iget v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_d

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_d
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 515
    return-void
.end method

.method public final getSerializeNulls()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_b

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_b
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 392
    :cond_15
    iget v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_22

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_22
    iput-object p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 430
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_18

    .line 431
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 437
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 438
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    :goto_17
    return-object p0

    .line 433
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_17
.end method

.method public final setHtmlSafe(Z)V
    .registers 2
    .param p1, "htmlSafe"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 254
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 220
    :goto_e
    return-void

    .line 217
    :cond_f
    iput-object p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, ": "

    iput-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_e
.end method

.method public final setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->lenient:Z

    .line 236
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 270
    return-void
.end method

.method public value(D)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 463
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_26
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 467
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 468
    return-object p0
.end method

.method public value(J)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 479
    iget-object v0, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 480
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 6
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    if-nez p1, :cond_7

    .line 492
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object p0

    .line 503
    .end local p0    # "this":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :goto_6
    return-object p0

    .line 495
    .restart local p0    # "this":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :cond_7
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_47

    const-string/jumbo v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 499
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_47
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 502
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public value(Ljava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    if-nez p1, :cond_7

    .line 415
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object p0

    .line 420
    .end local p0    # "this":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :goto_6
    return-object p0

    .line 417
    .restart local p0    # "this":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :cond_7
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public value(Z)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 450
    iget-object v1, p0, Lcom/newrelic/com/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_12

    const-string/jumbo v0, "true"

    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    return-object p0

    .line 450
    :cond_12
    const-string/jumbo v0, "false"

    goto :goto_e
.end method
