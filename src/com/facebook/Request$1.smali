.class final Lcom/facebook/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/Request$GraphUserCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphUserCallback;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    if-eqz v0, :cond_11

    .line 269
    iget-object v1, p0, Lcom/facebook/Request$1;->val$callback:Lcom/facebook/Request$GraphUserCallback;

    const-class v0, Lcom/facebook/model/GraphUser;

    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphUser;

    invoke-interface {v1, v0, p1}, Lcom/facebook/Request$GraphUserCallback;->onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V

    .line 271
    :cond_11
    return-void
.end method
