.class Lcom/airbnb/android/fragments/EditProfileFragment$2;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$2;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    const-string/jumbo v0, "click"

    const-string/jumbo v1, "about_me"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment$2;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$100(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/interfaces/EditProfileInterface;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->About:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/EditProfileInterface;->onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    .line 146
    return-void
.end method
