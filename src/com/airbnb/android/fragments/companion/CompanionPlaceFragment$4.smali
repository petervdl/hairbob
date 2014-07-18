.class Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;
.super Ljava/lang/Object;
.source "CompanionPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupOpeningHours()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x43340000

    const/high16 v4, 0x3f000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 227
    iget-object v6, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Z

    move-result v1

    if-nez v1, :cond_51

    move v1, v3

    :goto_11
    # setter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z
    invoke-static {v6, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$102(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;Z)Z

    .line 229
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Z

    move-result v1

    if-eqz v1, :cond_53

    move v1, v2

    :goto_1f
    iget-object v6, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z
    invoke-static {v6}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Z

    move-result v6

    if-eqz v6, :cond_28

    move v2, v5

    :cond_28
    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 233
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 234
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 235
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCellExtra;->getIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursDisplayed:Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 239
    return-void

    .line 227
    .end local v0    # "rotateAnimation":Landroid/view/animation/RotateAnimation;
    :cond_51
    const/4 v1, 0x0

    goto :goto_11

    :cond_53
    move v1, v5

    .line 229
    goto :goto_1f
.end method
