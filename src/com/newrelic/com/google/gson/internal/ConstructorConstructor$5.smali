.class Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
    .registers 3

    .prologue
    .line 138
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->this$0:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3c

    .line 142
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 143
    .local v0, "elementType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    .line 144
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1

    .line 146
    .restart local v0    # "elementType":Ljava/lang/reflect/Type;
    :cond_1c
    new-instance v1, Lcom/newrelic/com/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid EnumSet type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    :cond_3c
    new-instance v1, Lcom/newrelic/com/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid EnumSet type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
