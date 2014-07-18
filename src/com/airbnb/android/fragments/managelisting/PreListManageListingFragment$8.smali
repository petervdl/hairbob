.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;
.super Ljava/lang/Object;
.source "PreListManageListingFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->setupLocalLawsFrance()V
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
    .line 220
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 6
    .param p1, "linkIndex"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "https://www.airbnb.com/help/excerpts_from_french_law?hide_nav=true"

    const v3, 0x7f0e085e

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method
