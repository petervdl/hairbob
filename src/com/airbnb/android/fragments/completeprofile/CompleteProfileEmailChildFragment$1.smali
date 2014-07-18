.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1b

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mFragment:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
