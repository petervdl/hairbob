.class Lcom/airbnb/android/fragments/groups/NewContentFragment$4;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 283
    if-eqz p2, :cond_12

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemainingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/NewContentFragment;->setRemainingTitleCharacters()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$500(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    .line 289
    :goto_11
    return-void

    .line 287
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemainingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11
.end method
