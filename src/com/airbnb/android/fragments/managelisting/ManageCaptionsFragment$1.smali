.class Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;
.super Ljava/lang/Object;
.source "ManageCaptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    return-void
.end method
