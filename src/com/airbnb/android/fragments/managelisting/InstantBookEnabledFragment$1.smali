.class Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;
.super Ljava/lang/Object;
.source "InstantBookEnabledFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # setter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$002(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;Z)Z

    .line 86
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    if-ne v0, v1, :cond_1e

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Everyone:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    # setter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$102(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .line 90
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z

    move-result v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookCheckboxChange(Z)V

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->updateState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V

    .line 93
    return-void
.end method
