.class public Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etsy/android/grid/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/etsy/android/grid/ExtendableListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/etsy/android/grid/ExtendableListView;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
