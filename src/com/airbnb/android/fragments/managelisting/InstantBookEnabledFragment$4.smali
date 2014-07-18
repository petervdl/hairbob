.class Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;
.super Ljava/lang/Object;
.source "InstantBookEnabledFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->onStart()V
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
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mIsEnabled:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mVisibility:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setInstantBookSettings(ZLcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V

    .line 176
    return-void
.end method
