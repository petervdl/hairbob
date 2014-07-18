.class Lcom/airbnb/android/fragments/ROItineraryFragment$16;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupTitleSubtitle(Landroid/view/View;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$titleRes:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 510
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->val$titleRes:I

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 513
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->val$titleRes:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$16;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 518
    return-void
.end method
