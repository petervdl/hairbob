.class Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;
.super Ljava/lang/Object;
.source "EditProfileTextFieldFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 96
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$1;->val$rootView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/MiscUtils;->isKeyboardUp(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->mKeyboardUp:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->access$002(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)Z

    .line 102
    return-void
.end method
