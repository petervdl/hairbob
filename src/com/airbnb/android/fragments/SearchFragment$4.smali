.class Lcom/airbnb/android/fragments/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->setupActionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->access$402(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$500(Lcom/airbnb/android/fragments/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 425
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$600(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$500(Lcom/airbnb/android/fragments/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFragment$4$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFragment$4$1;-><init>(Lcom/airbnb/android/fragments/SearchFragment$4;)V

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$502(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 436
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$600(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$500(Lcom/airbnb/android/fragments/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$200(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->logSearchQueries(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->access$300(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    return v0
.end method
