.class Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;
.super Ljava/lang/Object;
.source "ProfilePhoneNumbersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_ADD_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity;->intentForType(Landroid/content/Context;Lcom/airbnb/android/enums/CompleteProfileType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
