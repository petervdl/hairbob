.class Lcom/airbnb/android/fragments/SearchFragment$4$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment$4;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/SearchFragment$4;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment$4;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$4$1;->this$1:Lcom/airbnb/android/fragments/SearchFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4$1;->this$1:Lcom/airbnb/android/fragments/SearchFragment$4;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 432
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$4$1;->this$1:Lcom/airbnb/android/fragments/SearchFragment$4;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment$4;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->querySearchAutocomplete()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$700(Lcom/airbnb/android/fragments/SearchFragment;)V

    .line 434
    :cond_11
    return-void
.end method
