.class Lcom/airbnb/android/fragments/ROItineraryFragment$15;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->updatePricing(Lcom/airbnb/android/views/GroupedCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

.field final synthetic val$guestPayPrice:Ljava/lang/String;

.field final synthetic val$hostPayoutPrice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 472
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->val$hostPayoutPrice:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->val$guestPayPrice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 475
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    const v3, 0x7f0e06e8

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "faqWebsite":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    const v3, 0x7f0e0681

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->val$hostPayoutPrice:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->val$guestPayPrice:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "text":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    const v3, 0x7f0e05cf

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$15;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 478
    return-void
.end method
