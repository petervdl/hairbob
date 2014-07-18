.class Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$2;
.super Ljava/lang/Object;
.source "EditProfileTextFieldFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$2;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$2;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 133
    return-void
.end method
