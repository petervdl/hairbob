.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->onClickPositive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    return-void
.end method
