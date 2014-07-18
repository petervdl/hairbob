.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$3;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$3;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->isEmailValid(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 145
    return-void
.end method
