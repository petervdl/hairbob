.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0e0563

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 332
    const-string/jumbo v2, "NY"

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 333
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    const v3, 0x7f0e05bf

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    const v3, 0x7f0e043e

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyHtmlText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v7}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    .line 345
    .local v0, "dialog":Lcom/airbnb/android/fragments/ZenDialog;
    :goto_32
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 346
    return-void

    .line 337
    .end local v0    # "dialog":Lcom/airbnb/android/fragments/ZenDialog;
    :cond_3c
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    const v3, 0x7f0e085e

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    const v4, 0x7f0e0417

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v7}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    .restart local v0    # "dialog":Lcom/airbnb/android/fragments/ZenDialog;
    goto :goto_32
.end method
