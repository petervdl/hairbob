.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .registers 2

    .prologue
    .line 858
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.2;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/FacebookException;Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .registers 5
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookException;",
            "Lcom/facebook/widget/GraphObjectPagingLoader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.2;"
    .local p2, "loader":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<*>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment;->hideActivityCircle()V

    .line 862
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    # getter for: Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 863
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    # getter for: Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v1, v1, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/PickerFragment$OnErrorListener;->onError(Lcom/facebook/widget/PickerFragment;Lcom/facebook/FacebookException;)V

    .line 865
    :cond_20
    return-void
.end method
