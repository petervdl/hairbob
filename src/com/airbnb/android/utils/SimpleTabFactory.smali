.class public Lcom/airbnb/android/utils/SimpleTabFactory;
.super Ljava/lang/Object;
.source "SimpleTabFactory.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/android/utils/SimpleTabFactory;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/airbnb/android/utils/SimpleTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    return-object v0
.end method
