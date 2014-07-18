.class Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;
.super Ljava/lang/Object;
.source "ProfilePhoneNumbersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

.field final synthetic val$phoneNumber:Lcom/airbnb/android/models/ProfilePhoneNumber;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;Lcom/airbnb/android/models/ProfilePhoneNumber;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->val$phoneNumber:Lcom/airbnb/android/models/ProfilePhoneNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->val$phoneNumber:Lcom/airbnb/android/models/ProfilePhoneNumber;

    # setter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$102(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Lcom/airbnb/android/models/ProfilePhoneNumber;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    .line 226
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    const v3, 0x7f0e017d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$100(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/ProfilePhoneNumber;->getNumberFormatted()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const v3, 0x7f0e0164

    const/16 v4, 0x1772

    iget-object v5, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter$1;->this$1:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 229
    return-void
.end method
