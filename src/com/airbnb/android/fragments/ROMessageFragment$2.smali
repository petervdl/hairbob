.class Lcom/airbnb/android/fragments/ROMessageFragment$2;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment;->setupReplyInput(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMessageFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$2;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$2;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/fragments/ROMessageFragment;->onInputTextFocus(Z)V

    .line 294
    if-eqz p2, :cond_11

    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$2;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$000(Lcom/airbnb/android/fragments/ROMessageFragment;)Lcom/airbnb/android/interfaces/ROFragmentInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->setRespondNowButtonVisibility(Z)V

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$2;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->adjustScroll(I)V

    .line 298
    return-void
.end method
