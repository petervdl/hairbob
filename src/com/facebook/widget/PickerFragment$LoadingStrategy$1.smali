.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .registers 2

    .prologue
    .line 834
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.1;"
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.1;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onCreateLoader()Lcom/facebook/widget/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.1;"
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;>;"
    .local p2, "data":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_f

    .line 844
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_f
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;>;"
    invoke-virtual {v0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 847
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 834
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.1;"
    check-cast p2, Lcom/facebook/widget/SimpleGraphObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;, "Lcom/facebook/widget/PickerFragment$LoadingStrategy.1;"
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_f

    .line 852
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_f
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;>;"
    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadReset(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    .line 855
    return-void
.end method
