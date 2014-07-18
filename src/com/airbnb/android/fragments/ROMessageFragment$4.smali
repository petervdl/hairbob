.class Lcom/airbnb/android/fragments/ROMessageFragment$4;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 322
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->hasUserInput()Z

    move-result v0

    if-nez v0, :cond_9

    .line 332
    :goto_8
    return-void

    .line 329
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/ROMessageFragment;->sendMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$100(Lcom/airbnb/android/fragments/ROMessageFragment;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROMessageFragment;->mInputEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$4;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->updateReplyButton()V

    goto :goto_8
.end method
