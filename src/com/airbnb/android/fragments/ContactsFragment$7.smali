.class Lcom/airbnb/android/fragments/ContactsFragment$7;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$7;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 671
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$7;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    # invokes: Lcom/airbnb/android/fragments/ContactsFragment;->handleGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/fragments/ContactsFragment;->access$600(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
