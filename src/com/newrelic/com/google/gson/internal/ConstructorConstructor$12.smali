.class Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
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

.field private final unsafeAllocator:Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;

.field final synthetic val$rawType:Ljava/lang/Class;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    .prologue
    .line 202
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->this$0:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;->create()Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->unsafeAllocator:Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->unsafeAllocator:Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;

    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 208
    .local v1, "newInstance":Ljava/lang/Object;
    return-object v1

    .line 209
    .end local v1    # "newInstance":Ljava/lang/Object;
    :catch_9
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
