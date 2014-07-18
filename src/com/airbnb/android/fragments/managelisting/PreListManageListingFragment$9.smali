.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;
.super Ljava/lang/Object;
.source "PreListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setupLocalLaws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    const-string/jumbo v1, "NY"

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->showLegalModal(Z)V
    invoke-static {v1, v6}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Z)V

    .line 246
    :goto_1b
    return-void

    .line 238
    :cond_1c
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e085e

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    const-string/jumbo v1, "NY"

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    const v1, 0x7f0e0416

    :goto_51
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    invoke-virtual {v1, v2, v5, v7}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1b

    :cond_76
    const v1, 0x7f0e0417

    goto :goto_51
.end method
