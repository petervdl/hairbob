.class Lcom/airbnb/android/fragments/ContactsFragment$6;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 498
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$6;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 14
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 501
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$6;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    # invokes: Lcom/airbnb/android/fragments/ContactsFragment;->handleChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/fragments/ContactsFragment;->access$500(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0
.end method
