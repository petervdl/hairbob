.class Lcom/airbnb/android/fragments/ManageCalendarFragment$1;
.super Ljava/lang/Object;
.source "ManageCalendarFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;

    if-eqz v0, :cond_26

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;->onFragmentPreDraw(Landroid/support/v4/app/Fragment;)V

    .line 106
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticHeightGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 107
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_26
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;

    if-eqz v0, :cond_17

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/FragmentPreDrawListener;->onFragmentPreDraw(Landroid/support/v4/app/Fragment;)V

    goto :goto_17
.end method
