.class public Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/ClickableLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedClickableSpan"
.end annotation


# instance fields
.field private mLinkIndex:I

.field private mListener:Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 78
    iput p1, p0, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->mLinkIndex:I

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->mListener:Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->mListener:Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    iget v1, p0, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->mLinkIndex:I

    invoke-interface {v0, v1}, Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;->onClickLink(I)V

    .line 96
    :cond_b
    return-void
.end method

.method public setOnClickListener(Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/airbnb/android/utils/ClickableLinkUtils$IndexedClickableSpan;->mListener:Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;

    .line 83
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 89
    return-void
.end method
