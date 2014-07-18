.class Lcom/airbnb/android/fragments/ManageCalendarFragment$4;
.super Ljava/lang/Object;
.source "ManageCalendarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment;->onFuxed(Lcom/airbnb/android/activities/ManageCalendarFUXActivity$CalendarFUXShowEvent;)V
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
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ManageCalendarAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$4;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;->setFuxMode(I)V

    .line 228
    return-void
.end method
