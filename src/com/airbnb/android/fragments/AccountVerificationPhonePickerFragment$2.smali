.class Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;
.super Ljava/lang/Object;
.source "AccountVerificationPhonePickerFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhonePickerList:Lcom/airbnb/android/views/LinearListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneSMSOptions:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mTitleText:Landroid/widget/TextView;

    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$2;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumbers:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$000(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/SecurityCheckPhoneNumber;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SecurityCheckPhoneNumber;->getId()J

    move-result-wide v2

    # setter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumberId:J
    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$202(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;J)J

    .line 103
    return-void
.end method
