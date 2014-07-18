.class final Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 6
    .param p1, "gson"    # Lcom/newrelic/com/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/Gson;",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p2, "typeToken":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_a

    .line 520
    const/4 v1, 0x0

    .line 524
    :goto_9
    return-object v1

    .line 523
    :cond_a
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/newrelic/com/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    .line 524
    .local v0, "dateTypeAdapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v1, p0, v0}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$22;Lcom/newrelic/com/google/gson/TypeAdapter;)V

    goto :goto_9
.end method
