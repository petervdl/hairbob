.class Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;
.super Ljava/lang/Object;
.source "ProfilePhoneNumbersFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setupPhoneNumbersList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 120
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$000(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2b

    .line 121
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$000(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/ProfilePhoneNumber;

    invoke-virtual {v1}, Lcom/airbnb/android/models/ProfilePhoneNumber;->getNumberFormatted()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "selectedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForVerifyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    .end local v0    # "selectedNumber":Ljava/lang/String;
    :cond_2b
    return-void
.end method
