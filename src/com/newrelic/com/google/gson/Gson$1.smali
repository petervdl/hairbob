.class Lcom/newrelic/com/google/gson/Gson$1;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/Gson;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/newrelic/com/google/gson/Gson$1;->this$0:Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p1, "json"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$1;->this$0:Lcom/newrelic/com/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
