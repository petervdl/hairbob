.class Lcom/airbnb/android/fragments/AddCreditCardFragment$12;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$12;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 253
    const/4 v0, 0x6

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$12;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1000(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 254
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$12;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->onSubmitButtonClick()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    .line 256
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
