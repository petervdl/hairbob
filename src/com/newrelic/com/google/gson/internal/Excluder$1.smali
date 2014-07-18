.class Lcom/newrelic/com/google/gson/internal/Excluder$1;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/Excluder;->create(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/newrelic/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/newrelic/com/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/newrelic/com/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/Excluder;ZZLcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)V
    .registers 6

    .prologue
    .line 120
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->this$0:Lcom/newrelic/com/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$gson:Lcom/newrelic/com/google/gson/Gson;

    iput-object p5, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$type:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 142
    .local v0, "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_5

    .end local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    :goto_4
    return-object v0

    .restart local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    :cond_5
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$gson:Lcom/newrelic/com/google/gson/Gson;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->this$0:Lcom/newrelic/com/google/gson/internal/Excluder;

    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$type:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/com/google/gson/Gson;->getDelegateAdapter(Lcom/newrelic/com/google/gson/TypeAdapterFactory;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    goto :goto_4
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->skipValue()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/internal/Excluder$1;->delegate()Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .param p1, "out"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/newrelic/com/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_8

    .line 134
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 138
    :goto_7
    return-void

    .line 137
    :cond_8
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/internal/Excluder$1;->delegate()Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_7
.end method
