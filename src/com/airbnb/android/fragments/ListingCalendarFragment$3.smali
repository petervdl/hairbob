.class Lcom/airbnb/android/fragments/ListingCalendarFragment$3;
.super Ljava/lang/Object;
.source "ListingCalendarFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingCalendarFragment;->setupSpaces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->newInstance(Ljava/util/List;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    return-void
.end method
